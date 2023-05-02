
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, doxygen, eigen, git, python3, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-eigenpy";
  version = "2.9.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eigenpy-release/archive/release/rolling/eigenpy/2.9.2-4.tar.gz";
    name = "2.9.2-4.tar.gz";
    sha256 = "2eaf4de4c158065b9ce0e3e0cd5aaaa8d1015d47592f4029b547d7dd1296a11b";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ boost eigen python3 python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Bindings between Numpy and Eigen using Boost.Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
