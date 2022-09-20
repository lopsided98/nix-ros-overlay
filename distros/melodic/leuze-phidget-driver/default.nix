
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leuze-msgs, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-leuze-phidget-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-led/leuze_ros_drivers-release/archive/release/melodic/leuze_phidget_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9daae2e7e6f3a21ae1d5c9e0313e6da614eb4752541292755543c55a2e7c12f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leuze-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The phidget interface kit driver package for leuze lasers'';
    license = with lib.licenses; [ asl20 ];
  };
}
