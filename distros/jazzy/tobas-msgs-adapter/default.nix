
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-eigen-msgs-adapter, tobas-kdl-msgs-adapter, tobas-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-msgs-adapter";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_msgs_adapter/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "17904f5dfafe4e58c55f2decab17348c2d7c3d2d2e9df1f751e64b13997eb5f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-eigen-msgs-adapter tobas-kdl-msgs-adapter tobas-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for core Tobas vehicle, sensor, and state messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
