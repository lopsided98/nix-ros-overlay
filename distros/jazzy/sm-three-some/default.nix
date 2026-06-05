
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-generic-sensor, cl-keyboard, cl-ros2-timer, rclcpp, smacc2, sr-all-events-go, std-msgs, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-three-some";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_three_some/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "0763c515e75e6766ee2c03db6b4a94f9f8adf755f6c8be4fb316bdde41c29793";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-generic-sensor cl-keyboard cl-ros2-timer rclcpp smacc2 sr-all-events-go std-msgs xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_three_some package";
    license = with lib.licenses; [ asl20 ];
  };
}
