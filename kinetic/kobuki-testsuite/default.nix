
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, kobuki-node, std-msgs, catkin, python-orocos-kdl, kobuki-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-testsuite";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_testsuite/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "487f7a9e02b442d89d25e1b059c092291e9002fd0247bd907876b3877859c7a6";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs kobuki-node std-msgs python-orocos-kdl kobuki-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs kobuki-node std-msgs python-orocos-kdl kobuki-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kobuki test suite: this package provides tools to thoroughly test Kobuki's hardware.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
