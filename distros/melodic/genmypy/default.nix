
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, genpy, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-genmypy";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rospypi/genmypy-release/archive/release/melodic/genmypy/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "6ffd972d47af70880c895da63f5c266d79454bde61e9c55a2cae7cba31249bf7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg genpy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python stub generator from genmsg specs'';
    license = with lib.licenses; [ asl20 ];
  };
}
