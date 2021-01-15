
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leuze-msgs, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-leuze-phidget-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-led/leuze_ros_drivers-release/archive/release/kinetic/leuze_phidget_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c54e0b0079d4200a01b9347593d454b92902c7097ddfd9ef62a66cacec586ac5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leuze-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The phidget interface kit driver package for leuze lasers'';
    license = with lib.licenses; [ asl20 ];
  };
}
