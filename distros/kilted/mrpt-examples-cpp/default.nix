
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, glfw3, mrpt-common, mrpt-data, mrpt-graphslam, mrpt-gui, mrpt-imgui, mrpt-libapps-cli, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-kilted-mrpt-examples-cpp";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/kilted/mrpt_examples_cpp/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "34d9109c6f6ba0b4f6f7bcb848258bfb068982f06318d9b3e8166f9171ba7823";
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
