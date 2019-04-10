
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-rosbash";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/lunar/rosbash/1.14.4-0.tar.gz;
    sha256 = "86c45953ee831c7ce3ae24444485ab4744c8eae33264e26a9d166dba4ef81f3b";
  };

  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted shell commands for using ros with bash.'';
    #license = lib.licenses.BSD;
  };
}
