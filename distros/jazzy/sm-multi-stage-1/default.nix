
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-keyboard, cl-ros2-timer, plasma5Packages, rclcpp, smacc2, sr-all-events-go, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sm-multi-stage-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_multi_stage_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "27181ed86ca0bcd31f34c7adf98f08b3a175cd7763db54a32a832fb042eb14bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-keyboard cl-ros2-timer plasma5Packages.konsole rclcpp smacc2 sr-all-events-go std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_multi_stage_1 package";
    license = with lib.licenses; [ asl20 ];
  };
}
