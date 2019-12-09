
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, sensor-msgs, boost, std-msgs, cmake-modules, robotis-device, catkin, eigen, robotis-framework-common, roscpp, robotis-math }:
buildRosPackage {
  pname = "ros-kinetic-open-cr-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/open_cr_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "532d9964b5e4448ba498a7da0a3605d0ca7f39e29e4c62827fac67c5a1251275";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost sensor-msgs std-msgs cmake-modules robotis-device eigen robotis-framework-common roscpp robotis-math ];
  propagatedBuildInputs = [ robotis-controller-msgs sensor-msgs boost std-msgs cmake-modules robotis-device eigen robotis-framework-common roscpp robotis-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The open_cr_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
