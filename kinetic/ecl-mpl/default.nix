
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ecl-mpl";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_mpl/0.61.17-0.tar.gz;
    sha256 = "6ce178d9b883052c5786f28df3686ffe1d7f6e427eb784585668d2a128f3d891";
  };

  buildInputs = [ ecl-license ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metaprogramming tools move alot of runtime calculations to be shifted to
    compile time. This has only very elementary structures at this stage.'';
    #license = lib.licenses.BSD;
  };
}
