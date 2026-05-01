
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-osrf-pycommon";
  version = "2.1.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/lyrical/osrf_pycommon/2.1.7-3.tar.gz";
    name = "2.1.7-3.tar.gz";
    sha256 = "ea2a87585b69e3cded81d73fb28c25b6f84165931635dfc86073bcc405b4c9b5";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = "Commonly needed Python modules, used by Python software developed at OSRF.";
    license = with lib.licenses; [ asl20 ];
  };
}
