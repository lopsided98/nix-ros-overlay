
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, robotis-controller-msgs, robotis-device, robotis-framework-common, robotis-math, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-cr-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/open_cr_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "532d9964b5e4448ba498a7da0a3605d0ca7f39e29e4c62827fac67c5a1251275";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen robotis-controller-msgs robotis-device robotis-framework-common robotis-math roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The open_cr_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
