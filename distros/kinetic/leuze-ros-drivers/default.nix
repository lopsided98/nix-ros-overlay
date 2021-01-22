
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leuze-bringup, leuze-description, leuze-msgs, leuze-phidget-driver, leuze-rsl-driver }:
buildRosPackage {
  pname = "ros-kinetic-leuze-ros-drivers";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-led/leuze_ros_drivers-release/archive/release/kinetic/leuze_ros_drivers/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f330d8c27bb85d3ff89e133c03db4b984b29cca21482e9db3a0d0bff0bceb8da";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leuze-bringup leuze-description leuze-msgs leuze-phidget-driver leuze-rsl-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The leuze_ros_drivers metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
