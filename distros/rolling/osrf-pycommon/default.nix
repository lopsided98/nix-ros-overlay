
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-osrf-pycommon";
  version = "2.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/rolling/osrf_pycommon/2.1.2-2.tar.gz";
    name = "2.1.2-2.tar.gz";
    sha256 = "3cc9fa8bb91f411b9e53cc54557b0977357dd1570e7227b5f2f370164a9bfb76";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.importlib-metadata ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
