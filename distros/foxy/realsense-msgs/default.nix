
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-realsense-msgs";
  version = "2.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_intel_realsense-release/archive/release/foxy/realsense_msgs/2.0.8-2.tar.gz";
    name = "2.0.8-2.tar.gz";
    sha256 = "65cb51b57237afed75d0c9b198e39bc70c72952fbed8a7cbd87545add8c15523";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message Definition for ROS2 RealSense Package'';
    license = with lib.licenses; [ asl20 ];
  };
}
