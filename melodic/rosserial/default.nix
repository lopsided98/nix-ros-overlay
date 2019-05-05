
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-python, rosserial-msgs, rosserial-client }:
buildRosPackage {
  pname = "ros-melodic-rosserial";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial/0.8.0-0.tar.gz;
    sha256 = "76cb860f1a6ba8a8bf9f13a2a878e91bc6cd33578e2bfadc0769449c6e9dc379";
  };

  propagatedBuildInputs = [ rosserial-python rosserial-msgs rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for core of rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
