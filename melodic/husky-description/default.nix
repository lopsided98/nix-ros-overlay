
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, catkin, roslaunch, lms1xx }:
buildRosPackage {
  pname = "ros-melodic-husky-description";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_description/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "d4c33dfc90776e53c36ce501ac33351d2567eafce3da02d56fe818a43c52c7f0";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro urdf lms1xx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
