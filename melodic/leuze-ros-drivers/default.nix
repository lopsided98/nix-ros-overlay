
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, leuze-description, leuze-rsl-driver, leuze-msgs, leuze-bringup, catkin, leuze-phidget-driver }:
buildRosPackage {
  pname = "ros-melodic-leuze-ros-drivers";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-led/leuze_ros_drivers-release/archive/release/melodic/leuze_ros_drivers/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "80385542d7d42cce3bfff386fea57882d92c3c1c3840bb4596539bbfb7fca638";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leuze-description leuze-rsl-driver leuze-msgs leuze-bringup leuze-phidget-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The leuze_ros_drivers metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
