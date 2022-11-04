
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rocon-icons";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_icons/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "06a97efd4802a2cd6b1e27fe7d1fa81a67923d0affb7ac21b53954225dace487";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Icons for rocon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
