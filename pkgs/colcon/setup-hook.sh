colconConfigurePhase() {
    runHook preConfigure
    # colcon does everything in one command
    runHook postConfigure
}

dontUseCmakeConfigure=true
if [ -z "${configurePhase-}" ]; then
    configurePhase=colconConfigurePhase
fi

colconBuildPhase() {
    runHook preBuild

    colcon --log-level info build --install-base "$out" --merge-install

    runHook postBuild
}

if [ -z "${buildPhase-}" ]; then
    buildPhase=colconBuildPhase
fi

colconInstallPhase() {
    runHook preInstall
    # colcon does everything in one command
    runHook postInstall
}

if [ -z "${installPhase-}" ]; then
    installPhase=colconInstallPhase
fi
