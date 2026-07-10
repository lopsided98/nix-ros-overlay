
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libsimpleini-dev, cmake, icu, mrpt-common, mrpt-expr, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-config";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_config/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "d54466a57229f6b617712c89771a024efcff6e47290561961982eae1f6938d31";
  };

  buildType = "cmake";
  buildInputs = [ _unresolved_libsimpleini-dev cmake icu python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ mrpt-common mrpt-expr ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The MRPT C++ library mrpt_config";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
