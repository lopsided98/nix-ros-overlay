
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, linuxHeaders, catkin }:
buildRosPackage {
  pname = "ros-melodic-libpcan";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/libpcan/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "071c830e338eb31913624b8c9cdbe911fac0db917651acdfc705b30c507df8ab";
  };

  buildType = "catkin";
  buildInputs = [ linuxHeaders ];
  propagatedBuildInputs = [ linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libpcan to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
