
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-marine-acoustic-msgs";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marine_msgs-release/archive/release/lyrical/marine_acoustic_msgs/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "34d6098e12728d41dd57371c99727091ce6b6ba30af4664686b9cc6a296241e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The marine_acoustic_msgs package, including messages for common
  underwater sensors (DVL, multibeam sonar, imaging sonar)";
    license = with lib.licenses; [ bsd3 ];
  };
}
