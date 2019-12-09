
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, eigen, cmake-modules, catkin }:
buildRosPackage {
  pname = "ros-melodic-ecl-eigen";
  version = "0.62.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_eigen/0.62.2-0.tar.gz";
    name = "0.62.2-0.tar.gz";
    sha256 = "e876bba5caea9487942c43d124404890361df1004126e7233a29d6b5c6e1c0c7";
  };

  buildType = "catkin";
  buildInputs = [ ecl-license eigen cmake-modules ];
  propagatedBuildInputs = [ ecl-license eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This provides an Eigen implementation for ecl's linear algebra.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
