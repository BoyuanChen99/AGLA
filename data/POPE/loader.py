from datasets import load_dataset

# # Load the default config (only "test" split, ~9k examples)
# ds = load_dataset("lmms-lab/POPE", "default")

# for split_name in ds:
#     print(f"{split_name} in default branch: {len(ds[split_name])} examples")

# # Access the test split
# test_set = ds["test"]

# # Print basic info
# print(f"Loaded {len(test_set)} examples.")
# print(test_set[0])  # Show the first sample


ds_full = load_dataset("lmms-lab/POPE", "Full")
# Access all splits
for split_name in ds_full:
    print(f"{split_name} in FULL branch: {len(ds_full[split_name])} examples")
    # print(ds[split_name][0])