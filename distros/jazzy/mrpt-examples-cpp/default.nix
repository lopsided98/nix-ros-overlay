
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, glfw3, mrpt-common, mrpt-data, mrpt-graphslam, mrpt-gui, mrpt-imgui, mrpt-libapps-cli, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-examples-cpp";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/jazzy/mrpt_examples_cpp/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "f9babce9fb26ad212a5125fbb748e0aa2eb4bff5978113c2e8c44aea943d56c7";
  };

  buildType = "cmake";
  buildInputs = [ cmake glfw3 ];
  propagatedBuildInputs = [ mrpt-common mrpt-data mrpt-graphslam mrpt-gui mrpt-imgui mrpt-libapps-cli mrpt-libapps-gui mrpt-nav ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ examples demonstrating MRPT functionality";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
