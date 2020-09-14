
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-bringup }:
buildRosPackage {
  pname = "ros-foxy-chiconybot-navigation2";
  version = "0.0.0-r2";

  src = fetchurl {
    url = "https://github.com/jediofgever/ROS_CB-release/archive/release/foxy/chiconybot_navigation2/0.0.0-2.tar.gz";
    name = "0.0.0-2.tar.gz";
    sha256 = "5b71d2508f6c4813bd7777e3d51190a89a8bb86212aafbcf013f2e088c7d83e7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ nav2-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for navigation2'';
    license = with lib.licenses; [ asl20 ];
  };
}
