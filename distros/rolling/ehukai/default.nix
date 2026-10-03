
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, imath, onetbb }:
buildRosPackage {
  pname = "ros-rolling-ehukai";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ehukai-release/archive/release/rolling/ehukai/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "873c11abff0410f8b861ddd0bf83570e781973b102e744af5c29124bbd151178";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen imath onetbb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Headless spectral ocean-wave synthesis library: TMA/JONSWAP/Pierson-Moskowitz
    spectra with directional spreading and dispersion, after Horvath (2015).
    Exports the ehukai::ehukai CMake target.

    This manifest exists so the library can be developed as a peer of its
    consumers in a colcon workspace. It is a plain CMake package — colcon does
    not change how it is configured, built or installed, and it is not a ROS
    package in any other sense. The Debian packaging (cmake/Packaging.cmake) and
    a standalone cmake build are unaffected.";
    license = with lib.licenses; [ asl20 ];
  };
}
