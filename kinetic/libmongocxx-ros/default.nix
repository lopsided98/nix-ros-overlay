
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, git, catkin, cacert, scons, openssl, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-libmongocxx-ros";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/libmongocxx_ros/0.4.2-0.tar.gz;
    sha256 = "4b37af22670b8d9faa1890cd07a2ee664d5db1ee54063af2058284085898363e";
  };

  propagatedBuildInputs = [ openssl roscpp boost ];
  nativeBuildInputs = [ cacert scons catkin boost openssl git roscpp ];

  meta = {
    description = ''A wrapper for the libmongocxx for mongodb_store'';
    #license = lib.licenses.Apache;
  };
}
