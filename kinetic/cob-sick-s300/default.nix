
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-sick-s300";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_sick_s300/0.7.0-1.tar.gz;
    sha256 = "5a1f2eb739639c34533b3ca55042f0ab6b358ccd587b02e616da986bdf6fab70";
  };

  buildInputs = [ boost sensor-msgs std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ boost sensor-msgs std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package published a laser scan message out of a Sick S300 laser scanner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
