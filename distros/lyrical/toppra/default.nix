
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-toppra";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/lyrical/toppra/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "835abeee13eacf83bba29c0f3db542cb8c9881007855e74d35a26e596b281487";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.pybind11 ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Time-Optimal Path Parameterization";
    license = with lib.licenses; [ mit ];
  };
}
