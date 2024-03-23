
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-jackal-msgs";
  version = "0.8.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_msgs/0.8.9-1.tar.gz";
    name = "0.8.9-1.tar.gz";
    sha256 = "d77b5d39e26c042ef2f7094a84ea3f533bbe3194aa948297a371a29bc975d534";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages exclusive to Jackal, especially for representing low-level motor commands and sensors.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
