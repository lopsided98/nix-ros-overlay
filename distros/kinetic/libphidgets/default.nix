
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb }:
buildRosPackage {
  pname = "ros-kinetic-libphidgets";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/kinetic/libphidgets/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "155d8cb6bc2c32fdf9ecb3938c5f1fe9d541db1e8eb65e420440822cbca97929";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidgets to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
