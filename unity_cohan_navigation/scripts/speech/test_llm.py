from llm_chains import listener_convo, attr_convo

# Test 1: Simple robot conversation reasoning
history = """
Human: Hey, why did you stop?
Robot: I'm detecting someone in front of me.
Human: Please go back.
"""

response = listener_convo(history)
print("Listener Output:")
print(response)


# Test 2: Pedestrian behavior reasoning
# Format: (time_of_nearest_position, distance_of_closest_encounter, direction_of_crossing)
pedestrian_data = ("13.2", "0.5", "right_to_left")

response = attr_convo(pedestrian_data)
print("\nAttribution Output:")
print(response)
