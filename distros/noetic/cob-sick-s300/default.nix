
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-sick-s300";
  version = "0.7.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_sick_s300/0.7.14-1.tar.gz";
    name = "0.7.14-1.tar.gz";
    sha256 = "88a77ecaa55d61e9745ce8575b5b42b8913d841ab124c74f3d1e32a10c697519";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost diagnostic-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package published a laser scan message out of a Sick S300 laser scanner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
