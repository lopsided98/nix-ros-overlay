
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-dashing-osrf-pycommon";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/dashing/osrf_pycommon/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "06f9c203b9061bc5ac69f7f0f82b1aac39ad406353a3f76d86df57dfc28a3b73";
  };

  buildType = "ament_python";

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
