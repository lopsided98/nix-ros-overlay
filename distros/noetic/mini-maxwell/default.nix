
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, roslib }:
buildRosPackage {
  pname = "ros-noetic-mini-maxwell";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/mini_maxwell/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "551b4f4c6f9bbec6ada301a2c19778d36db7f03f2050a060d84cec9cab8f72af";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules roslib ];
  propagatedBuildInputs = [ dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mini_maxwell'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
