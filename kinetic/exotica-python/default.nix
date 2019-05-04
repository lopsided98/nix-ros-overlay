
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, catkin, pythonPackages, pybind11-catkin, moveit-msgs, exotica-core, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-exotica-python";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_python/5.0.0-0.tar.gz;
    sha256 = "d43df97e58614446d8efb576b49484d1018cbef258dade25985951a337693c8a";
  };

  buildInputs = [ shape-msgs pybind11-catkin moveit-msgs exotica-core pythonPackages.matplotlib geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs pybind11-catkin moveit-msgs exotica-core pythonPackages.matplotlib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python bindings for EXOTica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
