
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, menge-vendor, qt5, rclcpp, rmf-building-sim-common }:
buildRosPackage {
  pname = "ros-humble-rmf-building-sim-ignition-plugins";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/humble/rmf_building_sim_ignition_plugins/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "66148f402c0c80779ac66e14faed65469092d7fa73b62a44206849452877374b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ menge-vendor qt5.qtbase qt5.qtdeclarative rclcpp rmf-building-sim-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Ignition gazebo plugins for building infrastructure simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
