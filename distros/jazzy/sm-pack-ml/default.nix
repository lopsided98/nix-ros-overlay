
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-generic-sensor, cl-keyboard, cl-ros2-timer, rclcpp, smacc2, sr-all-events-go, std-msgs, xterm }:
buildRosPackage {
  pname = "ros-jazzy-sm-pack-ml";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_pack_ml/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "e9a904401927bcca35a42491d787d4ad0ee367bacdd382dcc12711ce217a3154";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-generic-sensor cl-keyboard cl-ros2-timer rclcpp smacc2 sr-all-events-go std-msgs xterm ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The sm_pack_ml package";
    license = with lib.licenses; [ asl20 ];
  };
}
