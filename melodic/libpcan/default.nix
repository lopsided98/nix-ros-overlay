
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-libpcan";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/libpcan/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "261e7b4b413a23796bb4eec4744829006cfa89c83ec9ef0804091576a87f136c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libpcan to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
