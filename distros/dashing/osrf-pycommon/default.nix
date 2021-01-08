
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-osrf-pycommon";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_pycommon-release/archive/release/dashing/osrf_pycommon/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "cfd3e9851ce43c25785bea5b994dddd350307f4456d763fd8648dddc480b2241";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.mock ];

  meta = {
    description = ''Commonly needed Python modules, used by Python software developed at OSRF.'';
    license = with lib.licenses; [ asl20 ];
  };
}
