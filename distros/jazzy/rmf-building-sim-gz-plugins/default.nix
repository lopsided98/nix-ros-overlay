
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-gui-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sim-vendor, gz-transport-vendor, menge-vendor, qt5, rclcpp, rmf-door-msgs, rmf-fleet-msgs, rmf-lift-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rmf-building-sim-gz-plugins";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/jazzy/rmf_building_sim_gz_plugins/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "46cab914d83ef42e3e4e539b8fc20c2e7e0e68f07218c656a0e50f8e117531d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-gui-vendor gz-msgs-vendor gz-plugin-vendor gz-rendering-vendor gz-sim-vendor gz-transport-vendor menge-vendor qt5.qtbase qt5.qtdeclarative rclcpp rmf-door-msgs rmf-fleet-msgs rmf-lift-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo plugins for building infrastructure simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
