
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-reactivenav2d, catkin, mrpt-tutorials, mrpt-rawlog, mrpt-localization, mrpt-map, mrpt-local-obstacles }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-navigation";
  version = "0.1.23";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_navigation/0.1.23-0.tar.gz;
    sha256 = "11bfdbddf57671f7022c51e9a50832471e0e9eafaee40f6da6694363091bca7c";
  };

  propagatedBuildInputs = [ mrpt-rawlog mrpt-reactivenav2d mrpt-local-obstacles mrpt-tutorials mrpt-localization mrpt-map ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools related to the Mobile Robot Programming Toolkit (MRPT).
    Refer to http://wiki.ros.org/mrpt_navigation for further documentation.'';
    #license = lib.licenses.BSD;
  };
}
