
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-data, mrpt-graphslam, mrpt-gui, mrpt-imgui, mrpt-imgui-vendor, mrpt-libapps-cli, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-rolling-mrpt-examples-cpp";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_examples_cpp/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "f33219213e4315bf4f492599468ea799a3dab780b5df23469a2e6361cc347a4c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-common mrpt-data mrpt-graphslam mrpt-gui mrpt-imgui mrpt-imgui-vendor mrpt-libapps-cli mrpt-libapps-gui mrpt-nav ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ examples demonstrating MRPT functionality";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
