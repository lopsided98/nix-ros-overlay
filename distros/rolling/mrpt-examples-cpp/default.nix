
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-data, mrpt-graphslam, mrpt-gui, mrpt-imgui, mrpt-imgui-vendor, mrpt-libapps-cli, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-rolling-mrpt-examples-cpp";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_examples_cpp/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "e356023f833a5bbb3b5e57998c858cff6c8361c655a9d7c96ec74df1320111ea";
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
