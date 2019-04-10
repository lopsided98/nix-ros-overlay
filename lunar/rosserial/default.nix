
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-python, rosserial-msgs, rosserial-client }:
buildRosPackage {
  pname = "ros-lunar-rosserial";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/lunar/rosserial/0.7.7-0.tar.gz;
    sha256 = "e54ad746e16029e2791be063149a1c5fbca12f66e381660b4bd0c85d47511f7e";
  };

  propagatedBuildInputs = [ rosserial-python rosserial-msgs rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for core of rosserial.'';
    #license = lib.licenses.BSD;
  };
}
