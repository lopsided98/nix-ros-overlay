
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-sick-s300";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_sick_s300/0.6.14-1.tar.gz;
    sha256 = "56d5ea2933293de4076c5d369dea786e1bfbc6fa6e3813de16659227e36aa19b";
  };

  buildInputs = [ boost sensor-msgs std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ boost sensor-msgs std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package published a laser scan message out of a Sick S300 laser scanner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
