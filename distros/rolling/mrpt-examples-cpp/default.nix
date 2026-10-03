
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-common, mrpt-data, mrpt-graphslam, mrpt-gui, mrpt-imgui, mrpt-imgui-vendor, mrpt-libapps-cli, mrpt-libapps-gui, mrpt-nav }:
buildRosPackage {
  pname = "ros-rolling-mrpt-examples-cpp";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_examples_cpp/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "21a7bda70cb6fcaf536eae3784484bd8d8c93fe68e8007664303becac934ec28";
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
