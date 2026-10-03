
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-gazebo-common, tobas-gazebo-conversions, tobas-gazebo-gui-plugins, tobas-gazebo-msgs, tobas-gazebo-ros, tobas-gazebo-sim, tobas-gazebo-system-plugins, tobas-gazebo-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "f4663ff2bfc981ab2e2c98ab529ab5648ae19d63621170bc3de6408ef161b1de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-gazebo-common tobas-gazebo-conversions tobas-gazebo-gui-plugins tobas-gazebo-msgs tobas-gazebo-ros tobas-gazebo-sim tobas-gazebo-system-plugins tobas-gazebo-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas Gazebo simulation integration.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
