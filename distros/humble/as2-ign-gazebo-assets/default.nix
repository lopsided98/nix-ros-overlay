
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, as2-core, geometry-msgs, python3Packages, rclcpp, ros-gz-bridge, ros-gz-sim, sensor-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-ign-gazebo-assets";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_ign_gazebo_assets/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "072ecf46cdb980fb25355b3074b449a29fb1a4bdd011aba869f10d49162e5089";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ as2-core geometry-msgs python3Packages.jinja2 rclcpp ros-gz-bridge ros-gz-sim sensor-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Ignition Gazebo resources'';
    license = with lib.licenses; [ bsd3 ];
  };
}
