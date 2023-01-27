
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-schunk-svh-description";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/fzi-forschungszentrum-informatik/schunk_svh_ros_driver-release/archive/release/melodic/schunk_svh_description/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "a99abbe5a81f06724cb80885486ea28fb66046052b6ba96dc7280cdce2ddcbc1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The schunk_svh_description package'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
