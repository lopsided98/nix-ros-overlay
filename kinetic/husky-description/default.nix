
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, urdf, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-husky-description";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_description/0.3.3-0.tar.gz;
    sha256 = "5c114595867430481e19ce39edbf9e0f63efdae5115baf9abfe0142413165b32";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
