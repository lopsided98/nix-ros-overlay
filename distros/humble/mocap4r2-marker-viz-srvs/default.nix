
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mocap4r2-marker-viz-srvs";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/MOCAP4ROS2-Project/mocap4r2-release/archive/release/humble/mocap4r2_marker_viz_srvs/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "e1174a72fea92aa686d4cb76dcb45d0424c90e374d5f08511c9ce69362e38e4b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Service definitions for the marker visualization node";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
