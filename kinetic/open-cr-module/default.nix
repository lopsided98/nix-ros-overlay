
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, sensor-msgs, catkin, roscpp, robotis-math, eigen, std-msgs, robotis-device, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-open-cr-module";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/open_cr_module/0.2.1-0.tar.gz;
    sha256 = "532d9964b5e4448ba498a7da0a3605d0ca7f39e29e4c62827fac67c5a1251275";
  };

  propagatedBuildInputs = [ cmake-modules boost sensor-msgs roscpp robotis-math eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  nativeBuildInputs = [ cmake-modules boost sensor-msgs catkin roscpp robotis-math eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];

  meta = {
    description = ''The open_cr_module package'';
    #license = lib.licenses.Apache 2.0;
  };
}
