
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-eloquent-osrf-pycommon";
  version = "0.1.9-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/eloquent/osrf_pycommon/0.1.9-2.tar.gz";
    name = "0.1.9-2.tar.gz";
    sha256 = "916db4554b4a9375f6ec92f8d9643d9da42807a6b1863c082b6fb17550ed7159";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.mock ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
