
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-sick-s300";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_sick_s300/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "4048ac765db3cc4ba7bc43f7070d59c770e1cfbda3ca1d1859f35715ca99d2a6";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ boost sensor-msgs std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package published a laser scan message out of a Sick S300 laser scanner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
