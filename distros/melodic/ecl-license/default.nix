
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ecl-license";
  version = "0.61.8-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/melodic/ecl_license/0.61.8-1.tar.gz";
    name = "0.61.8-1.tar.gz";
    sha256 = "812ed1887128fee8dc1d288ca24063ed4402e00bb128aa23a0f57fd7cdfaef9e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Maintains the ecl licenses and also provides an install
     target for deploying licenses with the ecl libraries.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
