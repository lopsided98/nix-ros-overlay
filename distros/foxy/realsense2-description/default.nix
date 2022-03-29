
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-ros, rclcpp, rclcpp-components, realsense2-camera-msgs, xacro }:
buildRosPackage {
  pname = "ros-foxy-realsense2-description";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/foxy/realsense2_description/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "e68b7ccd5281d036c9b999e866ac9b128340d1d6472e19453c63527e464af135";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros rclcpp rclcpp-components realsense2-camera-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RealSense description package for Intel 3D D400 cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
