
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rocon-console";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_console/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "f9c8de84b23bb19b26971bf0e516cee5c1af7509519db44874fc8c062a742684";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Command line python console utilities (mostly for colourisation).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
